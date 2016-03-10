  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  movzbl %ah, %edx                   #  1     0    3      OPC=movzbl_r32_rh   
  callq .move_064_032_rdx_r10d_r11d  #  2     0x3  5      OPC=callq_label     
  addb %bl, %ah                      #  3     0x8  2      OPC=addb_rh_r8      
  movswl %r10w, %ebx                 #  4     0xa  4      OPC=movswl_r32_r16  
  retq                               #  5     0xe  1      OPC=retq            
                                                                              
.size target, .-target
