  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  movsldup %xmm1, %xmm15                    #  1     0     5      OPC=movsldup_xmm_xmm     
  vcvttsd2sil %xmm15, %r15d                 #  2     0x5   5      OPC=vcvttsd2sil_r32_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label          
  movslq %edx, %rbx                         #  4     0xf   3      OPC=movslq_r64_r32       
  addw %dx, %r15w                           #  5     0x12  4      OPC=addw_r16_r16         
  cmovnll %ebx, %ebx                        #  6     0x16  3      OPC=cmovnll_r32_r32      
  retq                                      #  7     0x19  1      OPC=retq                 
                                                                                           
.size target, .-target
