  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  movl %ebx, %r15d                   #  2     0x5   3      OPC=movl_r32_r32            
  vmovd %r15d, %xmm13                #  3     0x8   5      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm13, %xmm9, %xmm13   #  4     0xd   5      OPC=vpunpckldq_xmm_xmm_xmm  
  unpcklpd %xmm13, %xmm1             #  5     0x12  5      OPC=unpcklpd_xmm_xmm        
  retq                               #  6     0x17  1      OPC=retq                    
                                                                                       
.size target, .-target
