  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswl %cx, %esi    #  1     0    3      OPC=movswl_r32_r16   
  xchgb %bl, %bl      #  2     0x3  2      OPC=xchgb_r8_r8      
  setb %ah            #  3     0x5  3      OPC=setb_rh          
  salb $0x1, %ah      #  4     0x8  2      OPC=salb_rh_one      
  cmovnpl %esi, %ebx  #  5     0xa  3      OPC=cmovnpl_r32_r32  
  retq                #  6     0xd  1      OPC=retq             
                                                                
.size target, .-target
