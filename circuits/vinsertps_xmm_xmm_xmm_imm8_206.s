  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm2_r8_r9                #  2     0x5   5      OPC=callq_label    
  callq .move_064_128_r8_r9_xmm2                #  3     0xa   5      OPC=callq_label    
  vmovd %r13d, %xmm1                            #  4     0xf   5      OPC=vmovd_xmm_r32  
  retq                                          #  5     0x14  1      OPC=retq           
                                                                                         
.size target, .-target
