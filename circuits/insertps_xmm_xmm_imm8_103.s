  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vpbroadcastw %xmm1, %xmm12                    #  1     0     5      OPC=vpbroadcastw_xmm_xmm    
  maxss %xmm12, %xmm1                           #  2     0x5   5      OPC=maxss_xmm_xmm           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm6, %xmm3                #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13              #  5     0x13  5      OPC=callq_label             
  cmpq %r12, %r12                               #  6     0x18  3      OPC=cmpq_r64_r64            
  cmovngl %r13d, %r12d                          #  7     0x1b  4      OPC=cmovngl_r32_r32         
  callq .move_064_128_r12_r13_xmm1              #  8     0x1f  5      OPC=callq_label             
  retq                                          #  9     0x24  1      OPC=retq                    
                                                                                                  
.size target, .-target
