  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  vmovd %ebx, %xmm1                         #  1     0     4      OPC=vmovd_xmm_r32     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label       
  cmovnael %ecx, %ebx                       #  3     0x9   3      OPC=cmovnael_r32_r32  
  callq .move_r9b_to_byte_5_of_rbx          #  4     0xc   5      OPC=callq_label       
  retq                                      #  5     0x11  1      OPC=retq              
                                                                                        
.size target, .-target
