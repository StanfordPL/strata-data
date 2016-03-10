  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  cvtdq2pd %xmm1, %xmm0                     #  1     0     4      OPC=cvtdq2pd_xmm_xmm    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  xaddw %r8w, %dx                           #  3     0x9   5      OPC=xaddw_r16_r16       
  movzbq %r8b, %rax                         #  4     0xe   4      OPC=movzbq_r64_r8       
  vcvtss2sil %xmm0, %ebx                    #  5     0x12  4      OPC=vcvtss2sil_r32_xmm  
  xchgq %rax, %rbx                          #  6     0x16  3      OPC=xchgq_r64_r64       
  retq                                      #  7     0x19  1      OPC=retq                
                                                                                          
.size target, .-target
