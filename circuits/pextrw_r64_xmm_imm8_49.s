  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm2                     #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  vpmovzxwq %xmm2, %ymm7                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm     
  vhsubps %xmm7, %xmm7, %xmm1                   #  3     0xa   4      OPC=vhsubps_xmm_xmm_xmm   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0xe   5      OPC=callq_label           
  movzwl %r13w, %ebx                            #  5     0x13  4      OPC=movzwl_r32_r16        
  retq                                          #  6     0x17  1      OPC=retq                  
                                                                                                
.size target, .-target
