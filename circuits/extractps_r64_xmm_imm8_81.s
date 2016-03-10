  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  movq %xmm1, %rbx                          #  1     0     5      OPC=movq_r64_xmm       
  andnq %rbx, %rbx, %rdx                    #  2     0x5   5      OPC=andnq_r64_r64_r64  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label        
  cmovnll %edx, %ebx                        #  4     0xf   3      OPC=cmovnll_r32_r32    
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
