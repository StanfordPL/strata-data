  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  cmovnael %ecx, %ebx                  #  1     0     3      OPC=cmovnael_r32_r32   
  vmovq %rbx, %xmm10                   #  2     0x3   5      OPC=vmovq_xmm_r64      
  vcvtdq2ps %xmm10, %xmm12             #  3     0x8   5      OPC=vcvtdq2ps_xmm_xmm  
  vmovsldup %xmm10, %xmm13             #  4     0xd   5      OPC=vmovsldup_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label        
  callq .move_byte_4_of_ymm1_to_r8b    #  6     0x17  5      OPC=callq_label        
  callq .move_r8b_to_byte_7_of_rbx     #  7     0x1c  5      OPC=callq_label        
  retq                                 #  8     0x21  1      OPC=retq               
                                                                                    
.size target, .-target
