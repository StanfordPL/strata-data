  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movzbq %bl, %rdx  #  1     0     4      OPC=movzbq_r64_r8   
  movzwq %dx, %rcx  #  2     0x4   4      OPC=movzwq_r64_r16  
  xaddb %dh, %bl    #  3     0x8   3      OPC=xaddb_r8_rh     
  xaddb %dl, %bl    #  4     0xb   3      OPC=xaddb_r8_r8     
  xchgb %bl, %ah    #  5     0xe   2      OPC=xchgb_rh_r8     
  testb %cl, %bl    #  6     0x10  2      OPC=testb_r8_r8     
  retq              #  7     0x12  1      OPC=retq            
                                                              
.size target, .-target
