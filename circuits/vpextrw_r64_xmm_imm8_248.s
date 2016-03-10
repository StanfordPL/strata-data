  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovupd %xmm8, %xmm13                           #  2     0x5   5      OPC=vmovupd_xmm_xmm    
  vmovq %xmm8, %rcx                               #  3     0xa   5      OPC=vmovq_r64_xmm      
  vmovmskpd %xmm13, %ebp                          #  4     0xf   5      OPC=vmovmskpd_r32_xmm  
  movq %rbp, %rbx                                 #  5     0x14  3      OPC=movq_r64_r64       
  movw %cx, %bx                                   #  6     0x17  3      OPC=movw_r16_r16       
  retq                                            #  7     0x1a  1      OPC=retq               
                                                                                               
.size target, .-target
