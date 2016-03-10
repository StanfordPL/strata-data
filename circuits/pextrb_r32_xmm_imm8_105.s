  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  movq $0x20, %rbx                                #  2     0x5   10     OPC=movq_r64_imm64        
  vpbroadcastd %xmm10, %xmm8                      #  3     0xf   5      OPC=vpbroadcastd_xmm_xmm  
  vsubss %xmm10, %xmm8, %xmm1                     #  4     0x14  5      OPC=vsubss_xmm_xmm_xmm    
  callq .move_byte_5_of_ymm1_to_r9b               #  5     0x19  5      OPC=callq_label           
  movb %r9b, %bl                                  #  6     0x1e  3      OPC=movb_r8_r8            
  retq                                            #  7     0x21  1      OPC=retq                  
                                                                                                  
.size target, .-target
