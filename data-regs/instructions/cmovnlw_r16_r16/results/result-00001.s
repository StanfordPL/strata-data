  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnl %dh           #  1     0    3      OPC=setnl_rh         
  movswq %cx, %r11    #  2     0x3  4      OPC=movswq_r64_r16   
  decb %dh            #  3     0x7  2      OPC=decb_rh          
  cmovnsw %r11w, %bx  #  4     0x9  5      OPC=cmovnsw_r16_r16  
  retq                #  5     0xe  1      OPC=retq             
                                                                
.size target, .-target
