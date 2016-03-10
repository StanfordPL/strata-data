  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                 
.target:                            #        0    0      OPC=<label>            
  cvtsd2sil %xmm1, %ebx             #  1     0    4      OPC=cvtsd2sil_r32_xmm  
  callq .move_128_064_xmm1_r12_r13  #  2     0x4  5      OPC=callq_label        
  xorb %bh, %bh                     #  3     0x9  2      OPC=xorb_rh_rh         
  cmovlel %r12d, %ebx               #  4     0xb  4      OPC=cmovlel_r32_r32    
  retq                              #  5     0xf  1      OPC=retq               
                                                                                
.size target, .-target
