  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vbroadcastss %xmm2, %xmm13      #  1     0    5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %xmm2, %xmm13, %xmm9  #  2     0x5  4      OPC=vunpckhps_xmm_xmm_xmm  
  unpckhpd %xmm9, %xmm1           #  3     0x9  5      OPC=unpckhpd_xmm_xmm       
  retq                            #  4     0xe  1      OPC=retq                   
                                                                                  
.size target, .-target
