  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vmovd %eax, %xmm1                         #  2     0x5   4      OPC=vmovd_xmm_r32          
  vmovhlps %xmm2, %xmm1, %xmm6              #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm   
  vunpcklpd %xmm2, %xmm6, %xmm11            #  4     0xd   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovdqa %xmm11, %xmm1                     #  5     0x11  5      OPC=vmovdqa_xmm_xmm        
  retq                                      #  6     0x16  1      OPC=retq                   
                                                                                             
.size target, .-target
