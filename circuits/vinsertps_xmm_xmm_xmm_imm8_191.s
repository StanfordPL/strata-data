  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                   
.target:                            #        0     0      OPC=<label>              
  vphaddd %xmm3, %xmm1, %xmm13      #  1     0     5      OPC=vphaddd_xmm_xmm_xmm  
  vcvtpd2dqx %xmm13, %xmm1          #  2     0x5   5      OPC=vcvtpd2dqx_xmm_xmm   
  callq .move_128_064_xmm2_r12_r13  #  3     0xa   5      OPC=callq_label          
  rolq $0x1, %r13                   #  4     0xf   3      OPC=rolq_r64_one         
  vmovd %r13d, %xmm7                #  5     0x12  5      OPC=vmovd_xmm_r32        
  punpckhdq %xmm7, %xmm1            #  6     0x17  4      OPC=punpckhdq_xmm_xmm    
  retq                              #  7     0x1b  1      OPC=retq                 
                                                                                   
.size target, .-target
