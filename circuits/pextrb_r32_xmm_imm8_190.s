  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmaxsd %xmm1, %xmm1, %xmm2            #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  vpmovzxbq %xmm12, %xmm3               #  3     0x9   5      OPC=vpmovzxbq_xmm_xmm   
  xorq %rbx, %rbx                       #  4     0xe   3      OPC=xorq_r64_r64        
  callq .move_128_064_xmm3_r8_r9        #  5     0x11  5      OPC=callq_label         
  callq .move_byte_14_of_ymm1_to_r8b    #  6     0x16  5      OPC=callq_label         
  cmovleq %r8, %rbx                     #  7     0x1b  4      OPC=cmovleq_r64_r64     
  retq                                  #  8     0x1f  1      OPC=retq                
                                                                                      
.size target, .-target
