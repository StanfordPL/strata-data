  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movq %xmm7, %r12                              #  2     0x5   5      OPC=movq_r64_xmm       
  vmovmskpd %xmm7, %r9d                         #  3     0xa   4      OPC=vmovmskpd_r32_xmm  
  movzbq %r9b, %rbx                             #  4     0xe   4      OPC=movzbq_r64_r8      
  xaddw %r12w, %bx                              #  5     0x12  5      OPC=xaddw_r16_r16      
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
