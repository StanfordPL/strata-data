  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movsbl %bl, %ecx                 #  1     0     3      OPC=movsbl_r32_r8   
  movslq %ecx, %rdx                #  2     0x3   3      OPC=movslq_r64_r32  
  callq .move_064_032_rdx_r8d_r9d  #  3     0x6   5      OPC=callq_label     
  xaddb %bl, %r8b                  #  4     0xb   4      OPC=xaddb_r8_r8     
  adcb %bl, %bl                    #  5     0xf   2      OPC=adcb_r8_r8      
  retq                             #  6     0x11  1      OPC=retq            
                                                                             
.size target, .-target
