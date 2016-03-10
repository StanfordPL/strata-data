  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  unpckhpd %xmm1, %xmm1                     #  1     0     4      OPC=unpckhpd_xmm_xmm  
  movq $0xfffffffffffffffa, %rbx            #  2     0x4   10     OPC=movq_r64_imm64    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xe   5      OPC=callq_label       
  popcntl %edx, %esi                        #  4     0x13  4      OPC=popcntl_r32_r32   
  cmovnll %edx, %ebx                        #  5     0x17  3      OPC=cmovnll_r32_r32   
  retq                                      #  6     0x1a  1      OPC=retq              
                                                                                        
.size target, .-target
