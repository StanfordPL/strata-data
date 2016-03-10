  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  vrsqrtps %xmm1, %xmm2                     #  1     0     4      OPC=vrsqrtps_xmm_xmm  
  movmskpd %xmm2, %ebx                      #  2     0x4   4      OPC=movmskpd_r32_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label       
  xchgl %r9d, %ebx                          #  4     0xd   3      OPC=xchgl_r32_r32     
  retq                                      #  5     0x10  1      OPC=retq              
                                                                                        
.size target, .-target
