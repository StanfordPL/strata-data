  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vmovq %rax, %xmm4                         #  1     0     5      OPC=vmovq_xmm_r64      
  vcvtpd2ps %xmm4, %xmm2                    #  2     0x5   4      OPC=vcvtpd2ps_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label        
  cltd                                      #  4     0xe   1      OPC=cltd               
  movsbq %dl, %rdx                          #  5     0xf   4      OPC=movsbq_r64_r8      
  retq                                      #  6     0x13  1      OPC=retq               
                                                                                         
.size target, .-target
