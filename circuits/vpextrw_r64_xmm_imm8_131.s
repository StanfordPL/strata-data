  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  pmovzxwd %xmm1, %xmm12                    #  1     0     6      OPC=pmovzxwd_xmm_xmm    
  vminps %xmm12, %xmm12, %xmm1              #  2     0x6   5      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xb   5      OPC=callq_label         
  popcntl %r8d, %ebx                        #  4     0x10  5      OPC=popcntl_r32_r32     
  xaddw %bx, %r9w                           #  5     0x15  5      OPC=xaddw_r16_r16       
  retq                                      #  6     0x1a  1      OPC=retq                
                                                                                          
.size target, .-target
