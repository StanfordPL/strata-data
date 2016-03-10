  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %ymm8            #  1     0     5      OPC=vpmovzxwq_ymm_xmm   
  vmovsldup %xmm8, %xmm2            #  2     0x5   5      OPC=vmovsldup_xmm_xmm   
  vmovss %xmm2, %xmm8, %xmm3        #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm  
  xorq %rbx, %rbx                   #  4     0xe   3      OPC=xorq_r64_r64        
  callq .move_128_064_xmm3_r10_r11  #  5     0x11  5      OPC=callq_label         
  andb %r11b, %bl                   #  6     0x16  3      OPC=andb_r8_r8          
  cmovel %r11d, %ebx                #  7     0x19  4      OPC=cmovel_r32_r32      
  retq                              #  8     0x1d  1      OPC=retq                
                                                                                  
.size target, .-target
