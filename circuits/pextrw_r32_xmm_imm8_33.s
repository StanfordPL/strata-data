  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm10                   #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  vmovsldup %ymm10, %ymm2                   #  2     0x5   5      OPC=vmovsldup_ymm_ymm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label        
  xorq %rbx, %rbx                           #  4     0xf   3      OPC=xorq_r64_r64       
  callq .move_byte_2_of_ymm1_to_r8b         #  5     0x12  5      OPC=callq_label        
  cmovnaw %r8w, %bx                         #  6     0x17  5      OPC=cmovnaw_r16_r16    
  retq                                      #  7     0x1c  1      OPC=retq               
                                                                                         
.size target, .-target
