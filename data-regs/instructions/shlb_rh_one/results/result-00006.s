  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movzbl %ah, %ebx                   #  1     0     3      OPC=movzbl_r32_rh    
  callq .move_064_032_rbx_r10d_r11d  #  2     0x3   5      OPC=callq_label      
  popcntw %r10w, %cx                 #  3     0x8   6      OPC=popcntw_r16_r16  
  setnp %al                          #  4     0xe   3      OPC=setnp_r8         
  adcb %r10b, %bl                    #  5     0x11  3      OPC=adcb_r8_r8       
  rolw $0x1, %ax                     #  6     0x14  3      OPC=rolw_r16_one     
  retq                               #  7     0x17  1      OPC=retq             
                                                                                
.size target, .-target
