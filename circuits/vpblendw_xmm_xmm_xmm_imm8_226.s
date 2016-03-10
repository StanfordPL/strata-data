  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label         
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label         
  xaddw %r9w, %r13w                 #  3     0xa   5      OPC=xaddw_r16_r16       
  movw %r12w, %r8w                  #  4     0xf   4      OPC=movw_r16_r16        
  callq .move_064_128_r8_r9_xmm3    #  5     0x13  5      OPC=callq_label         
  vmovsd %xmm2, %xmm3, %xmm1        #  6     0x18  4      OPC=vmovsd_xmm_xmm_xmm  
  movss %xmm3, %xmm1                #  7     0x1c  4      OPC=movss_xmm_xmm       
  retq                              #  8     0x20  1      OPC=retq                
                                                                                  
.size target, .-target
