  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm12_xmm13           #  1     0     5      OPC=callq_label            
  pmovzxbd %xmm13, %xmm4                        #  2     0x5   6      OPC=pmovzxbd_xmm_xmm       
  vcvtsd2ss %xmm4, %xmm13, %xmm2                #  3     0xb   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11              #  4     0xf   5      OPC=callq_label            
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  5     0x14  5      OPC=callq_label            
  movq %r11, %rbx                               #  6     0x19  3      OPC=movq_r64_r64           
  retq                                          #  7     0x1c  1      OPC=retq                   
                                                                                                 
.size target, .-target
