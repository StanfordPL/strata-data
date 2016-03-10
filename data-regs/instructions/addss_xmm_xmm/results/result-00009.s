  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vaddps %xmm2, %xmm1, %xmm3                      #  1     0     4      OPC=vaddps_xmm_xmm_xmm     
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vcvtss2sd %xmm8, %xmm10, %xmm15                 #  3     0x9   5      OPC=vcvtss2sd_xmm_xmm_xmm  
  cvtsd2ss %xmm15, %xmm1                          #  4     0xe   5      OPC=cvtsd2ss_xmm_xmm       
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
