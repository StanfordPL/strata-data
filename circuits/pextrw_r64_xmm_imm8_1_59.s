  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovsxwd %xmm5, %ymm8                        #  2     0x5   5      OPC=vpmovsxwd_ymm_xmm  
  vmovshdup %xmm8, %xmm5                        #  3     0xa   5      OPC=vmovshdup_xmm_xmm  
  vmovq %xmm5, %r12                             #  4     0xf   5      OPC=vmovq_r64_xmm      
  movzwq %r12w, %rbx                            #  5     0x14  4      OPC=movzwq_r64_r16     
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
