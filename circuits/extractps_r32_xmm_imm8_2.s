  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm12_xmm13       #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm13, %xmm1                #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label           
  movl %eax, %ebx                           #  4     0xf   2      OPC=movl_r32_r32          
  retq                                      #  5     0x11  1      OPC=retq                  
                                                                                            
.size target, .-target
