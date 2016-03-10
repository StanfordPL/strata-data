  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  vmovd %ecx, %xmm14                        #  1     0     4      OPC=vmovd_xmm_r32     
  cmovnlel %ecx, %ebx                       #  2     0x4   3      OPC=cmovnlel_r32_r32  
  movdqu %xmm14, %xmm1                      #  3     0x7   5      OPC=movdqu_xmm_xmm    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xc   5      OPC=callq_label       
  callq .move_r8b_to_byte_5_of_rbx          #  5     0x11  5      OPC=callq_label       
  retq                                      #  6     0x16  1      OPC=retq              
                                                                                        
.size target, .-target
