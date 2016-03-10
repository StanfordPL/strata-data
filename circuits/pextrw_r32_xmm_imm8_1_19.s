  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  pmovsxwd %xmm1, %xmm1                #  1     0     5      OPC=pmovsxwd_xmm_xmm        
  vpunpckhdq %xmm1, %xmm1, %xmm9       #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x9   5      OPC=callq_label             
  vdivss %xmm10, %xmm9, %xmm1          #  4     0xe   5      OPC=vdivss_xmm_xmm_xmm      
  callq .move_128_064_xmm1_r8_r9       #  5     0x13  5      OPC=callq_label             
  movq $0x4, %rbx                      #  6     0x18  10     OPC=movq_r64_imm64          
  xaddw %bx, %r9w                      #  7     0x22  5      OPC=xaddw_r16_r16           
  retq                                 #  8     0x27  1      OPC=retq                    
                                                                                         
.size target, .-target
