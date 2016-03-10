  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vandnps %xmm8, %xmm2, %xmm10                    #  2     0x5   5      OPC=vandnps_xmm_xmm_xmm      
  vfmsub231ss %xmm1, %xmm10, %xmm8                #  3     0xa   5      OPC=vfmsub231ss_xmm_xmm_xmm  
  addss %xmm8, %xmm1                              #  4     0xf   5      OPC=addss_xmm_xmm            
  retq                                            #  5     0x14  1      OPC=retq                     
                                                                                                     
.size target, .-target
