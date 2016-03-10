  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vcvtss2sd %xmm1, %xmm1, %xmm3     #  1     0     4      OPC=vcvtss2sd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9    #  2     0x4   5      OPC=callq_label            
  callq .move_128_064_xmm1_r12_r13  #  3     0x9   5      OPC=callq_label            
  blsmskl %r9d, %r8d                #  4     0xe   5      OPC=blsmskl_r32_r32        
  callq .read_sf_into_rbx           #  5     0x13  5      OPC=callq_label            
  xchgq %r13, %rbx                  #  6     0x18  3      OPC=xchgq_r64_r64          
  retq                              #  7     0x1b  1      OPC=retq                   
                                                                                     
.size target, .-target
