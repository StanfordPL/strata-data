  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vhsubpd %xmm2, %xmm10, %xmm13        #  2     0x5   4      OPC=vhsubpd_xmm_xmm_xmm       
  vfnmsub231ps %xmm1, %xmm13, %xmm3    #  3     0x9   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vmovss %xmm3, %xmm1, %xmm1           #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm        
  retq                                 #  5     0x12  1      OPC=retq                      
                                                                                           
.size target, .-target
