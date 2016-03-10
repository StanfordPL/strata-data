  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm1                          #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovd %xmm9, %r9d                               #  3     0xa   5      OPC=vmovd_r32_xmm      
  popcntl %r9d, %ebx                              #  4     0xf   5      OPC=popcntl_r32_r32    
  movw %r9w, %bx                                  #  5     0x14  4      OPC=movw_r16_r16       
  retq                                            #  6     0x18  1      OPC=retq               
                                                                                               
.size target, .-target