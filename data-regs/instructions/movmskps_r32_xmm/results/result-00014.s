  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm6  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovmskps %xmm1, %rcx           #  2     0x4   4      OPC=vmovmskps_r64_xmm       
  cvtsi2ssl %ecx, %xmm6           #  3     0x8   4      OPC=cvtsi2ssl_xmm_r32       
  cvttss2sil %xmm6, %ebx          #  4     0xc   4      OPC=cvttss2sil_r32_xmm      
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
