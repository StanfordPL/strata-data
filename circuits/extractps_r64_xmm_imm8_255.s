  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm3            #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label             
  movq $0xffffffffffffffc0, %rbx            #  3     0x9   10     OPC=movq_r64_imm64          
  callq .move_r9b_to_byte_6_of_rbx          #  4     0x13  5      OPC=callq_label             
  shll $0x1, %ebx                           #  5     0x18  2      OPC=shll_r32_one            
  cmovbel %r8d, %ebx                        #  6     0x1a  4      OPC=cmovbel_r32_r32         
  retq                                      #  7     0x1e  1      OPC=retq                    
                                                                                              
.size target, .-target
