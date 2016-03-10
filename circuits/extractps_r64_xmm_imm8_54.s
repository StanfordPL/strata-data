  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  xorq %rcx, %rcx                    #  1     0     3      OPC=xorq_r64_r64            
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x3   5      OPC=callq_label             
  movzwl %cx, %ebx                   #  3     0x8   3      OPC=movzwl_r32_r16          
  xaddb %bh, %bh                     #  4     0xb   3      OPC=xaddb_rh_rh             
  vpunpckhdq %xmm9, %xmm1, %xmm1     #  5     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm1, %edi                   #  6     0x13  4      OPC=movd_r32_xmm            
  addl %edi, %ebx                    #  7     0x17  2      OPC=addl_r32_r32            
  retq                               #  8     0x19  1      OPC=retq                    
                                                                                       
.size target, .-target
