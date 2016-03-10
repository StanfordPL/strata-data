  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vmovhlps %xmm11, %xmm9, %xmm13                  #  2     0x5   5      OPC=vmovhlps_xmm_xmm_xmm      
  vorpd %ymm13, %ymm13, %ymm8                     #  3     0xa   5      OPC=vorpd_ymm_ymm_ymm         
  vfnmsub231ps %xmm2, %xmm8, %xmm2                #  4     0xf   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  addss %xmm2, %xmm1                              #  5     0x14  4      OPC=addss_xmm_xmm             
  retq                                            #  6     0x18  1      OPC=retq                      
                                                                                                      
.size target, .-target
