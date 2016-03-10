  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovddup %xmm1, %xmm12           #  1     0     4      OPC=vmovddup_xmm_xmm        
  vpunpckhdq %xmm1, %xmm12, %xmm2  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9   #  3     0x8   5      OPC=callq_label             
  xorq %rbx, %rbx                  #  4     0xd   3      OPC=xorq_r64_r64            
  cmovpl %r9d, %ebx                #  5     0x10  4      OPC=cmovpl_r32_r32          
  retq                             #  6     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
