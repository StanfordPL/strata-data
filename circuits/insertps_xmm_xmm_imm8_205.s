  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovhlps %xmm9, %xmm11, %xmm15                  #  2     0x5   5      OPC=vmovhlps_xmm_xmm_xmm  
  punpcklqdq %xmm15, %xmm1                        #  3     0xa   5      OPC=punpcklqdq_xmm_xmm    
  cvtsd2ss %xmm15, %xmm1                          #  4     0xf   5      OPC=cvtsd2ss_xmm_xmm      
  retq                                            #  5     0x14  1      OPC=retq                  
                                                                                                  
.size target, .-target
