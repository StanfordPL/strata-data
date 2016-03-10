  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  pmovzxwq %xmm5, %xmm10                        #  2     0x5   6      OPC=pmovzxwq_xmm_xmm   
  xorq %rdi, %rdi                               #  3     0xb   3      OPC=xorq_r64_r64       
  vorps %xmm10, %xmm10, %xmm1                   #  4     0xe   5      OPC=vorps_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13              #  5     0x13  5      OPC=callq_label        
  callq .read_cf_into_rbx                       #  6     0x18  5      OPC=callq_label        
  xaddw %r13w, %bx                              #  7     0x1d  5      OPC=xaddw_r16_r16      
  retq                                          #  8     0x22  1      OPC=retq               
                                                                                             
.size target, .-target
