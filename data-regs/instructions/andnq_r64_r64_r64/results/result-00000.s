  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vmovq %rcx, %xmm5                 #  1     0     5      OPC=vmovq_xmm_r64      
  movq %rdx, %xmm6                  #  2     0x5   5      OPC=movq_xmm_r64       
  vorps %xmm5, %xmm6, %xmm3         #  3     0xa   4      OPC=vorps_xmm_xmm_xmm  
  xorps %xmm5, %xmm3                #  4     0xe   3      OPC=xorps_xmm_xmm      
  callq .move_128_064_xmm3_r10_r11  #  5     0x11  5      OPC=callq_label        
  movswq %r11w, %rbx                #  6     0x16  4      OPC=movswq_r64_r16     
  addq %r10, %rbx                   #  7     0x1a  3      OPC=addq_r64_r64       
  retq                              #  8     0x1d  1      OPC=retq               
                                                                                 
.size target, .-target
