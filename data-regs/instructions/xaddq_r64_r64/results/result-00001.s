  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovq %rbx, %xmm15                 #  1     0     5      OPC=vmovq_xmm_r64            
  addq %rcx, %rbx                    #  2     0x5   3      OPC=addq_r64_r64             
  vpunpcklqdq %xmm15, %xmm15, %xmm2  #  3     0x8   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  punpcklqdq %xmm15, %xmm2           #  4     0xd   5      OPC=punpcklqdq_xmm_xmm       
  vmovq %xmm2, %rcx                  #  5     0x12  5      OPC=vmovq_r64_xmm            
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
