  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movsbl %ah, %ebx                   #  1     0     3      OPC=movsbl_r32_rh  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x3   5      OPC=callq_label    
  xaddl %ebx, %r10d                  #  3     0x8   4      OPC=xaddl_r32_r32  
  setnp %al                          #  4     0xc   3      OPC=setnp_r8       
  shlw $0x1, %ax                     #  5     0xf   3      OPC=shlw_r16_one   
  retq                               #  6     0x12  1      OPC=retq           
                                                                              
.size target, .-target
