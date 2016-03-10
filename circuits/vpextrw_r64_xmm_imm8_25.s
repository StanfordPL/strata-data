  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vmovsldup %xmm1, %xmm10                   #  1     0     4      OPC=vmovsldup_xmm_xmm  
  vpmovzxwq %xmm10, %ymm1                   #  2     0x4   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11      #  3     0x9   5      OPC=callq_label        
  callq .move_128_256_xmm10_xmm11_ymm3      #  4     0xe   5      OPC=callq_label        
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  5     0x13  5      OPC=callq_label        
  movsbq %r9b, %rbx                         #  6     0x18  4      OPC=movsbq_r64_r8      
  xaddw %bx, %r8w                           #  7     0x1c  5      OPC=xaddw_r16_r16      
  retq                                      #  8     0x21  1      OPC=retq               
                                                                                         
.size target, .-target
