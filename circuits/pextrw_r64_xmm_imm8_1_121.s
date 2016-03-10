  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovsxwq %xmm1, %ymm3            #  1     0     5      OPC=vpmovsxwq_ymm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  2     0x5   5      OPC=callq_label        
  callq .move_128_064_xmm1_r8_r9    #  3     0xa   5      OPC=callq_label        
  xchgw %r8w, %r12w                 #  4     0xf   4      OPC=xchgw_r16_r16      
  popcntl %r8d, %ebx                #  5     0x13  5      OPC=popcntl_r32_r32    
  xaddw %bx, %r13w                  #  6     0x18  5      OPC=xaddw_r16_r16      
  retq                              #  7     0x1d  1      OPC=retq               
                                                                                 
.size target, .-target
