  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13       #  1     0     5      OPC=callq_label        
  cvtss2sil %xmm13, %edx                    #  2     0x5   5      OPC=cvtss2sil_r32_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label        
  movq %rdx, %rbx                           #  4     0xf   3      OPC=movq_r64_r64       
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
