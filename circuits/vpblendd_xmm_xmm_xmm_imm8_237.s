  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vsqrtss %xmm10, %xmm3, %xmm0                    #  2     0x5   5      OPC=vsqrtss_xmm_xmm_xmm    
  vunpcklps %xmm9, %xmm3, %xmm12                  #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovsd %xmm12, %xmm0, %xmm1                     #  4     0xf   5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                            #  5     0x14  1      OPC=retq                   
                                                                                                   
.size target, .-target
