  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label         
  vmovshdup %xmm1, %xmm12                   #  2     0x5   4      OPC=vmovshdup_xmm_xmm   
  cvtdq2pd %xmm12, %xmm6                    #  3     0x9   5      OPC=cvtdq2pd_xmm_xmm    
  vcvtsd2sil %xmm6, %ebx                    #  4     0xe   4      OPC=vcvtsd2sil_r32_xmm  
  xchgl %ebx, %r9d                          #  5     0x12  3      OPC=xchgl_r32_r32       
  retq                                      #  6     0x15  1      OPC=retq                
                                                                                          
.size target, .-target
