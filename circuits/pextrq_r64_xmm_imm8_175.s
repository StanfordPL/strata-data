  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  callq .move_128_064_xmm1_r8_r9                #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm4, %rbx                         #  3     0xa   4      OPC=vmovmskpd_r64_xmm  
  decb %bh                                      #  4     0xe   2      OPC=decb_rh            
  xaddq %r8, %r9                                #  5     0x10  4      OPC=xaddq_r64_r64      
  xchgq %r8, %rbx                               #  6     0x14  3      OPC=xchgq_r64_r64      
  retq                                          #  7     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
