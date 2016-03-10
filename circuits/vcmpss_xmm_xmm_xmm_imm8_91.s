  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label          
  vmovd %r9d, %xmm7                         #  2     0x5   5      OPC=vmovd_xmm_r32        
  movupd %xmm2, %xmm8                       #  3     0xa   5      OPC=movupd_xmm_xmm       
  vandnpd %xmm7, %xmm7, %xmm2               #  4     0xf   4      OPC=vandnpd_xmm_xmm_xmm  
  vmovss %xmm2, %xmm8, %xmm1                #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm   
  retq                                      #  6     0x17  1      OPC=retq                 
                                                                                           
.size target, .-target
