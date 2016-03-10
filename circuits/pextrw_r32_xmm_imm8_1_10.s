  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  vpmovsxdq %xmm1, %xmm4   #  1     0     5      OPC=vpmovsxdq_xmm_xmm   
  movq $0x2, %rbx          #  2     0x5   10     OPC=movq_r64_imm64      
  punpckhqdq %xmm4, %xmm4  #  3     0xf   4      OPC=punpckhqdq_xmm_xmm  
  movq %xmm4, %rax         #  4     0x13  5      OPC=movq_r64_xmm        
  xchgw %bx, %ax           #  5     0x18  3      OPC=xchgw_r16_r16       
  retq                     #  6     0x1b  1      OPC=retq                
                                                                         
.size target, .-target
