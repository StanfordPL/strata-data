  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  xorq %rbx, %rbx                               #  1     0     3      OPC=xorq_r64_r64       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x3   5      OPC=callq_label        
  vpmovsxwd %xmm6, %xmm1                        #  3     0x8   5      OPC=vpmovsxwd_xmm_xmm  
  vmovshdup %ymm1, %ymm3                        #  4     0xd   4      OPC=vmovshdup_ymm_ymm  
  callq .move_128_064_xmm3_r8_r9                #  5     0x11  5      OPC=callq_label        
  addw %r8w, %bx                                #  6     0x16  4      OPC=addw_r16_r16       
  retq                                          #  7     0x1a  1      OPC=retq               
                                                                                             
.size target, .-target
