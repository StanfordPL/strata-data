  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vhsubpd %xmm7, %xmm7, %xmm3                   #  2     0x5   4      OPC=vhsubpd_xmm_xmm_xmm    
  vunpckhps %xmm3, %xmm5, %xmm15                #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  punpcklqdq %xmm15, %xmm1                      #  4     0xd   5      OPC=punpcklqdq_xmm_xmm     
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
