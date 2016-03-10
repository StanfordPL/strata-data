  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  pmovsxdq %xmm1, %xmm5                     #  1     0     5      OPC=pmovsxdq_xmm_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  cvtss2sil %xmm5, %ecx                     #  3     0xa   4      OPC=cvtss2sil_r32_xmm  
  movq %rcx, %rbx                           #  4     0xe   3      OPC=movq_r64_r64       
  xaddl %ebx, %r9d                          #  5     0x11  4      OPC=xaddl_r32_r32      
  retq                                      #  6     0x15  1      OPC=retq               
                                                                                         
.size target, .-target
