  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm1_r12_r13                #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm10, %ebx                          #  3     0xa   5      OPC=vmovmskpd_r32_xmm  
  incb %bl                                        #  4     0xf   2      OPC=incb_r8            
  xaddq %rbx, %r13                                #  5     0x11  4      OPC=xaddq_r64_r64      
  retq                                            #  6     0x15  1      OPC=retq               
                                                                                               
.size target, .-target
